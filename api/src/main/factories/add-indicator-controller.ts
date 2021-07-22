import { Connection } from 'typeorm'
import { AddIndicatorController } from '../../controllers/add-indicator-controller'
import { Controller } from '../../controllers/ports/controller'
import { PostgresCountryRepository } from '../../repository/postgres/postgres-country-repository'
import { PostgresIndicatorRepository } from '../../repository/postgres/postgres-indicator-repository'
import { AddCountry } from '../../usecase/add-country'
import { AddIndicator } from '../../usecase/add-indicator'

export default function makeAddIndicatorController(
  connection: Connection
): Controller {
  const countryRepository = new PostgresCountryRepository(connection)
  const indicatorRepository = new PostgresIndicatorRepository(connection)
  const addIndicatorUsecase = new AddIndicator(indicatorRepository)
  const addCountryUsecase = new AddCountry(countryRepository)
  return new AddIndicatorController(addIndicatorUsecase, addCountryUsecase)
}
